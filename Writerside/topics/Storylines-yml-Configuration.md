# Storylines.yml Configuration

## Creating a New Storyline

To create a new storyline, you need to define various parameters to specify its characteristics, requirements, and progression.

### Parameters

1. **friendlyName (optional):**
    - The display name for the storyline, used in messages.
      ```yaml
      friendlyName: Nice storyline name
      ```

2. **cooldown (optional):**
    - Cooldown time before the storyline can be repeated, in seconds.
      ```yaml 
      cooldown: 2
      ``` 

3. **maxCompletions (optional):**
    - Maximum number of times the storyline can be completed.
      ```yaml 
      maxCompletions: 4
      ```

4. **timeToComplete (optional):**
    - Time given to complete the entire storyline, in minutes.
      ```yaml 
      timeToComplete: 43
      ```

5. **npcs (required):**
    - Non-playable characters (NPCs) involved in the storyline and their actions.
      ```yaml
      npcs:
        - npcID: 0
          friendlyName: Bob
          actions:
            - message: "hi1"
              clickSound:
                sound: ENTITY_EXPERIENCE_ORB_PICKUP
                volume: 50
                pitch: 1
              actions:
                - message: "hi2"
                - message: "hi3"
                  delay: 10
            - message: "hi2"
            - command: "give %\player% emerald 1"
              delay: 20 #in ticks (one second is equal to 20 ticks)
            - quest: bringPotato
        - npcID: bob
          actions:
            - message: "hi3"
            - message: "hi4"
        - npcID: 0
          actions:
            - message: "h5"
              command: "give %\player% diamond 2"
            - message: "thx"
      ```

### Explanation of NPC configuration options:

- **NPC Identification (`npcID`):**
    - Each NPC should have a unique identifier (`npcID`) within the storyline. This npcID must be the same your npc plugin (currently Citizens and FancyNPCs are supported) uses to identify this npc.

- **Friendly Name (`friendlyName`):**
    - This parameter assigns a friendly name to the NPC, enhancing readability and context.

- **Group (`group`):**
    - This parameter makes it possible to complete actions also in another order than they are defined.
      - Example; all the npcs within the group `greeting-npcs` can be completed in any order but they must be completed before the "end" message:
        ```yaml
        - npcID: welcomeNpc
          actions:
            - message: "Welcome to this quest"
        
        - npcID: helloNpc
          actions:
            - message: "hello"
          group: greeting-npcs
        
        - npcID: bonjourNpc
          actions:
            - message: "bonjour"
          group: greeting-npcs
        
        - npcID: halloNpc
          actions:
            - message: "hallo"
          group: greeting-npcs
        
        - npcID: endNpc
          actions:
            - message: "end"
        ```

- **Actions (`actions`):**
    - The `actions` parameter encapsulates all actions associated with the NPC.

  - **Message Action:**
      - The NPC can display messages to the player.
          - Example:
            ```yaml
            - message: "hi1"
              clickSound:
                sound: ENTITY_EXPERIENCE_ORB_PICKUP
                volume: 50
                pitch: 1
            ```
      - Optionally, you can associate a click sound with the message.

  - **Command Action:**
      - The NPC can execute commands.
          - Example:
            ```yaml
            - command: "give %\player% emerald 1"
              delay: 20 #in ticks (one second is equal to 20 ticks)
            ```
          - You can specify a delay (in ticks) between executing consecutive commands.
          - Optionally, you can associate a click sound with the command.

  - **Quest Action:**
      - The NPC triggers quest progression but does not progress in the storyline until the quest is completed.
          - Example:
            ```yaml
            - quest: bringPotato
            ```
          - This action indicates that interacting with the NPC triggers the quest named "bringPotato".
          - You can define this quest in the `quests.yml` file.

### Example
```yaml
storyline1:
  friendlyName: Nice storyline name
  cooldown: 2
  maxCompletions: 4
  timeToComplete: 43
  npcs:
    - npcID: 0
      friendlyName: Bob
      actions:
        - message: "hi1"
          clickSound:
            sound: ENTITY_EXPERIENCE_ORB_PICKUP
            volume: 50
            pitch: 1
        - message: "hi2"
        - command: "give %\player% emerald 1"
          delay: 20 #in ticks (one second is equal to 20 ticks)
        - quest: bringPotato
    - npcID: bob
      actions:
        - message: "hi3"
        - message: "hi4"
    - npcID: 0
      actions:
        - message: "h5"
          command: "give %\player% diamond 2"
        - message: "thx"
```