# Permissions

#### `logiclobby.admin.updateNotify`
- **Default**: `op`
- **Description**: Permission to receive update notifications for the `LogicLobby` plugin.

#### `logiclobby.admin.reload`
- **Default**: `op`
- **Description**: Allows administrators to reload the plugin configuration.
- **Children**:
    - `logiclobby.admin`: Inherits from the admin group.

#### `logiclobby.admin.version`
- **Default**: `op`
- **Description**: Allows administrators to check the current version of the `LogicLobby` plugin.
- **Children**:
    - `logiclobby.admin`: Inherits from the admin group.

#### `logiclobby.admin`
- **Default**: `op`
- **Description**: General administrator permission that includes reloading and version checking.

#### `logiclobby.command.fly`
- **Default**: `op`
- **Description**: Permission to use the `/fly` command to toggle flight mode.

#### `logiclobby.command.fly.others`
- **Default**: `op`
- **Description**: Allows a user to toggle flight mode for other players.

#### `logiclobby.command.spawn`
- **Default**: `true`
- **Description**: Permission to use the `/spawn` command to teleport to the spawn location.

#### `logiclobby.admin.build`
- **Default**: `false`
- **Description**: Grants permission to build and modify blocks in the lobby area.

#### `logiclobby.command.lobbyswitcher`
- **Default**: `true`
- **Description**: Permission to use the `/lobbyswitcher` command to switch between lobbies.

#### `logiclobby.gadget.teleportBow`
- **Default**: `op`
- **Description**: Grants access to the Teleport Bow gadget.