#include <stdarg.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdlib.h>

uint8_t *diplomat_dart_alloc(size_t size, size_t align);

void diplomat_dart_free(uint8_t *ptr);

struct DiplomatWriteable *diplomat_buffer_writeable_create(size_t cap);

void diplomat_buffer_writeable_destroy(struct DiplomatWriteable *this_);
