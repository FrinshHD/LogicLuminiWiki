# Quests.yml Configuration

## Creating a New Quest

To create a new quest, you need to define various parameters to specify its characteristics, requirements, and rewards.

### Parameters

1. **friendlyName (optional):**
    - The display name for the quest, used in messages. If this option doesn't exist, the quest ID is used as a friendly name.
      ```yaml
      friendlyName: Zombie Slayer
      ```

2. **description (optional):**
    - Description of the quest's objectives, shown, for example, in the quest's lore in the quest menu.
      ```yaml 
      description: The zombie apocalypse is upon us! Eliminate 20 zombies and collect their rotten flesh.
      ```

3. **category (optional):**
    - Specifies the category of the quest (e.g., combat, exploration, gathering). Use the ID of the category you want the quest to be added to. You can create new categories in the `categories.yml` file. If you don't specify a category, the quest won't show in the quest menu, useful, for example, for quests you only want players to be able to complete in a storyline.
      ```yaml
      category: combat
      ```

4. **oneTime (optional):**
    - Whether the quest can only be completed once (`true`) or can be repeated (`false`). The default value is `false`.
      ```yaml
      oneTime: false
      ``` 

5. **cooldown (optional):**
    - Cooldown time before the quest can be repeated, in seconds. The default value is `-1` so no cooldown exists.
      ```yaml 
      cooldown: 120
      ``` 

6. **showCompletions (optional):**
    - Whether to show the player how many times they have already completed the quest. The default value is false when the quest is one-time use; otherwise, it's true. It is displayed in the quest item's lore in the quest menu.
      ```yaml
      showCompletions: true
      ```

7. **requirements (required):**
    - Conditions that must be met to complete the quest. Currently available options are `items`, `killedEntities`, `placedBlocks`, `destroyedBlocks`, `blockInteractions` and `reachLocation`.
      ```yaml
      requirements:
        items:
          - material: ROTTEN_FLESH
            amount: 20
        killedEntities:
          - entity: ZOMBIE
            amount: 2
        placedBlocks:
          - material: DIRT
            amount: 2
            worlds:
              - world
          - material: STONE
            amount: 6
        destroyedBlocks:
          - material: DIRT
            amount: 2
            worlds:
              - world
          - material: STONE
            amount: 6
        blockInteractions:
          - location: [-602, 72, 283]
            world: "world"
            interactActions:
              - LEFT_CLICK
              - RIGHT_CLICK
        reachLocation:
          - world: world
            location1: [10, 10, 10]
            location2: [20, 20, 20]
      ```

8. **rewards (optional):**
    - Rewards granted upon completing the quest. Currently available options are `items`, `commands`, and `money` if you have Vault and an economy plugin installed.
      ```yaml
      rewards:
        items:
          - material: IRON_SWORD
            amount: 1
          - material: GOLDEN_APPLE
            amount: 2
        commands:
          - name: "1x Diamond Sword"
            command: "/give %\player% diamond_sword"
        money: 2
      ```

9. **requiredQuests (optional):**
    - List of quests that must be completed before starting this quest.
      ```yaml 
      requiredQuests: 
        - combat1
      ```

10. **announce (optional):**
    - Whether to send a chat message to all online players when the player has completed this quest. The default value is `false`.
       ```yaml
       announce: true
       ```

### Example

```yaml
combat3:
  friendlyName: Spider Exterminator
  description: Arachnophobia be gone! Annihilate 25 spiders and retrieve their eyes as trophies.
  category: combat
  announce: true
  requirements:
    items:
      - material: SPIDER_EYE
        amount: 25
  rewards:
    items:
      - material: IRON_CHESTPLATE
        amount: 1
    money: 20
```