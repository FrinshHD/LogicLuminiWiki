# Config.yml

#### `enableCloudNetSupport`
- **Type**: `Boolean`
- **Default**: `false`
- **Description**: Enables or disables support for CloudNet, a server management tool. If set to `true`, specific features such as lobby switching via CloudNet will be enabled.

#### `defaultHotbarSlot`
- **Type**: `Integer`
- **Default**: `4`
- **Description**: Defines the default slot in the player's hotbar where special items (like the teleporter) will appear when joining the server.

---

### Spawn Configuration (`spawn`)

#### `teleportOnJoin`
- **Type**: `Boolean`
- **Default**: `true`
- **Description**: Automatically teleports the player to the spawn location when they join the server.

#### `location`
- **Type**: `Array` `[x, y, z]`
- **Default**: `[0, 80, 0]`
- **Description**: The coordinates where players will spawn when they join.

#### `world`
- **Type**: `String`
- **Default**: `"world"`
- **Description**: The name of the world where the player will be teleported on join.

#### `yaw`, `pitch`
- **Type**: `Float`
- **Default**: `0`
- **Description**: The yaw (horizontal rotation) and pitch (vertical rotation) for player orientation upon teleporting.

---

### Items Configuration (`items`)

This section defines the items that will be available in the player's hotbar.

#### Item Properties
- **`id`**: Unique identifier for the item.
- **`friendlyName`**: The display name of the item, supporting color codes (e.g., `"&2Teleporter"`).
- **`material`**: The type of material the item is made of (e.g., `"COMPASS"`, `"BOW"`, `"NETHER_STAR"`).
- **`slot`**: The hotbar slot where the item will appear.
- **`menu`**: (Optional) The menu associated with the item (e.g., `"TELEPORTER"`, `"LOBBYSWITCHER"`).
- **`type`**: (Optional) Specific type of item (e.g., `"TELEPORT_BOW"`, `"PLAYER_HIDER"`).

#### Example Items
- **`teleporter`**
    - A compass used for teleportation, placed in slot 4.
- **`lobbyswitcher`**
    - A Nether Star that allows switching between lobbies, placed in slot 5.
- **`teleportbow`**
    - A bow used for teleportation, placed in slot 6. The associated arrow (`teleportArrow`) is placed in slot 17.
- **`playerhider`**
    - A Player Hider tool that toggles between showing and hiding players, placed in slot 8.

---

### Lobby Switcher (`lobbySwitcher`)

This section controls the lobby switching functionality, including the inventory layout and server list.

#### `inventoryRows`
- **Type**: `Integer`
- **Default**: `4`
- **Description**: Defines how many rows are displayed in the lobby switcher inventory.

#### `fillerItem`
- **Type**: `Object`
    - **`type`**: `String`
    - **`item`**: `Object`
        - **`material`**: `String` (e.g., `"GRAY_STAINED_GLASS_PANE"`)
- **Description**: Specifies a placeholder item used to fill empty slots in the lobby menu.

#### `lobbyItem`
- **Types**:
    - `CONNECTED`
    - `NORMAL`
    - `EMPTY`
    - `UNREACHABLE`
- **Material**: Sets the material for each type of lobby status.

#### `lobbyServers`
- **Type**: `List`
- **Description**: Defines the available lobbies. Each lobby has an `id`, `name`, `serverName`, and a `description` template with placeholders for player count and status.

---

### Teleporter Menu (`teleporter`)

This section configures the server teleportation menu.

#### `inventoryRows`
- **Type**: `Integer`
- **Default**: `5`
- **Description**: Defines the number of rows in the teleporter menu inventory.

#### `servers`
- **Type**: `List`
- **Description**: Configures the list of teleportable servers with specific items, descriptions, and slots.
- **Example Server Configurations**:
    - **`oneblock`**: A OneBlock server with a custom Player Head texture, displayed in slot 13.
    - **`pvp`**: A PVP server, with a glowing Diamond Sword item in slot 19.
    - **`potionWars`**: A Potion Wars server with a potion item in slot 25.
    - **`helmetWars`**: A Helmet Wars server with a leather helmet in slot 31.
    - **`spawn`**: A spawn teleportation option with a beacon in slot 44.

---

### Events (`events`)

This section controls various game mechanics that affect player interaction.

#### Event Options
- **`noDamage`**: Disables player damage.
- **`noHunger`**: Disables hunger depletion.
- **`noBlockBreak`**: Prevents players from breaking blocks.
- **`noBlockPlace`**: Prevents players from placing blocks.
- **`noItemDrop`**: Disables item dropping.
- **`noItemPickup`**: Prevents players from picking up items.
- **`noItemCraft`**: Disables crafting.
- **`noItemConsume`**: Prevents item consumption.
- **`noEntityDamage`**: Disables entity damage.
- **`noEntitySpawn`**: Prevents entity spawning.
- **`lowestY`**: Sets the lowest Y-coordinate where players can go before death occurs.

---

### Database (`database`)

This section configures the database connection used for storing player and lobby data.

#### Database Options
- **`type`**: The type of database being used. Supports `"sqlite"` and `"mysql"`.
- **`host`**: The hostname of the database server.
- **`port`**: The port to connect to the database.
- **`database`**: The name of the database to connect to.
- **`username`**: The username for database authentication.
- **`password`**: The password for database authentication.

---

This documentation provides an overview of the configuration options available in the `config.yml` file. Adjust these settings to tailor the gameplay and server behavior to your needs.