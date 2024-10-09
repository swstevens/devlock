CREATE TABLE IF NOT EXISTS match_player
(
    match_id UInt64,
    account_id UInt32,
    player_slot UInt32,
    team Enum8 (
        'Team0' = 0,
        'Team1' = 1,
        'Spectator' = 16,
    ),
    kills UInt32,
    deaths UInt32,
    assists UInt32,
    net_worth UInt32,
    hero_id UInt32,
    last_hits UInt32,
    denies UInt32,
    ability_points UInt32,
    party UInt32,
    assigned_lane UInt32,
    player_level UInt32,
    abandon_match_time_s UInt32,
    ability_stats Map (Int64, Int64),
    stats_type_stat Array (Float32),
    book_reward Nested (
        book_id UInt32,
        xp_amount UInt32,
        starting_xp UInt32
    ),
    death_details Nested (
        game_time_s UInt32,
        killer_player_slot UInt32,
        death_pos Tuple (Float32, Float32, Float32),
        killer_pos Tuple (Float32, Float32, Float32),
        death_duration_s UInt32
    ),
    items Nested (
        game_time_s UInt32,
        item_id UInt32,
        upgrade_id UInt32,
        sold_time_s UInt32,
        flags UInt32,
        imbued_ability_id UInt32
    ),
    stats Nested (
        time_stamp_s UInt32,
        net_worth UInt32,
        gold_player UInt32,
        gold_player_orbs UInt32,
        gold_lane_creep_orbs UInt32,
        gold_neutral_creep_orbs UInt32,
        gold_boss UInt32,
        gold_boss_orb UInt32,
        gold_treasure UInt32,
        gold_denied UInt32,
        gold_death_loss UInt32,
        gold_lane_creep UInt32,
        gold_neutral_creep UInt32,
        kills UInt32,
        deaths UInt32,
        assists UInt32,
        creep_kills UInt32,
        neutral_kills UInt32,
        possible_creeps UInt32,
        creep_damage UInt32,
        player_damage UInt32,
        neutral_damage UInt32,
        boss_damage UInt32,
        denies UInt32,
        player_healing UInt32,
        ability_points UInt32,
        self_healing UInt32,
        player_damage_taken UInt32,
        max_health UInt32,
        weapon_power UInt32,
        tech_power UInt32,
        shots_hit UInt32,
        shots_missed UInt32,
        damage_absorbed UInt32,
        absorption_provided UInt32,
        hero_bullets_hit UInt32,
        hero_bullets_hit_crit UInt32,
        heal_prevented UInt32,
        heal_lost UInt32,
        damage_mitigated UInt32,
        level UInt32
    )
) ENGINE = MergeTree ORDER BY match_id;