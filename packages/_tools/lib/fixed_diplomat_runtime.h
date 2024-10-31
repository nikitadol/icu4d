#ifndef FIXED_DIPLOMAT_RUNTIME_C_H
#define FIXED_DIPLOMAT_RUNTIME_C_H

#include <stdint.h>
#include "../../../icu4x/ffi/capi/bindings/c/diplomat_runtime.h"

DiplomatWriteable* diplomat_buffer_writeable_create(size_t cap);
void diplomat_buffer_writeable_destroy(DiplomatWriteable* t);

#endif
