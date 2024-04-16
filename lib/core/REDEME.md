## core

This package contain the independent contracts (interfaces).

### model

The model is the responsible of data serialization. Nothing should depend on it.

### entity

The entity is the application business roles, it dose deal with model and every other thing deal
with it.

### data_source

The data_source is the parent contract of every data_source type. Concrete data_sources will contain
the implementation of the data bringing, storing, deleting etc.

### remote_data_source

The parent of every remote_data_source. As the name suggest this is responsibility to handle calls
to the server.

### local_data_source

The parent of every local_data_source. As the name suggest this is responsibility to handle device
data caching.

### repository

The is the responsible of sinking the viewModel with data based on device connectivity. If the
device is connected than it will deal with the remote_data_source other way it will deal with
local_data_source.

### viewModel

Yes, the viewModel it's no defined internally, that because we're depending on `crow` which gives us
one by default. 