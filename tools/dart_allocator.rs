use alloc::alloc::{Layout, alloc, dealloc, realloc};
use core::mem::size_of;

struct AllocInfo {
    layout: Layout,
    origin_ptr: *mut u8,
}

/// Allocates a buffer of a given size in Rust's memory.
///
/// # Safety
/// - The allocated buffer must be freed with [`diplomat_dart_free()`].
#[no_mangle]
pub unsafe extern "C" fn diplomat_dart_alloc(size: usize, align: usize) -> *mut u8 {
    let header_layout = Layout::new::<AllocInfo>();
    let requested_layout = Layout::from_size_align_unchecked(size, align);

    let (to_request, offset) = header_layout.extend(requested_layout).unwrap();

    let origin_ptr = alloc(to_request);

    if origin_ptr.is_null() {
        return origin_ptr;
    }

    let result_ptr = origin_ptr.add(offset);

    let info_ptr = result_ptr.sub(size_of::<AllocInfo>()) as *mut AllocInfo;
    info_ptr.write_unaligned(AllocInfo {
        layout: to_request,
        origin_ptr,
    });

    result_ptr
}

/// Realloc a buffer that was allocated in Rust's memory.
/// # Safety
/// - `ptr` must be a pointer to a valid buffer allocated by [`diplomat_dart_alloc()`].
/// - The allocated buffer must be freed with [`diplomat_dart_free()`].
#[no_mangle]
pub unsafe extern "C" fn diplomat_dart_realloc(ptr: *mut u8, new_size: usize) -> *mut u8 {
    assert!(!ptr.is_null());

    let info_ptr = ptr.sub(size_of::<AllocInfo>()) as *const AllocInfo;

    let info = info_ptr.read_unaligned();

    let new_ptr = realloc(info.origin_ptr, info.layout, new_size);

    if new_ptr.is_null() {
        return ptr;
    }

    let result_ptr = new_ptr.add(size_of::<AllocInfo>());

    let info_ptr = result_ptr.sub(size_of::<AllocInfo>()) as *mut AllocInfo;
    info_ptr.write_unaligned(AllocInfo {
        layout: info.layout,
        origin_ptr: new_ptr,
    });

    result_ptr
}

/// Frees a buffer that was allocated in Rust's memory.
/// # Safety
/// - `ptr` must be a pointer to a valid buffer allocated by [`diplomat_dart_alloc()`].
#[no_mangle]
pub unsafe extern "C" fn diplomat_dart_free(ptr: *mut u8) {
    assert!(!ptr.is_null());

    let info_ptr = ptr.sub(size_of::<AllocInfo>()) as *const AllocInfo;

    let info = info_ptr.read_unaligned();
    dealloc(info.origin_ptr, info.layout);
}
