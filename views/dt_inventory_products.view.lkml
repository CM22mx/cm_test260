view: dt_inventory_products {
  # sql_table_name: warehouse.customer
  derived_table: {
    sql: SELECT
    (DATE(`inventory`.`sold_at`)) AS `sold_at`,
    `inventory`.`product_id` AS `product_id`,
    `products`.`sku` AS `sku`,
    `products`.`brand` AS `brand`,
    `products`.`item_name` AS `item_name`,
    COUNT(*) AS `count`
FROM
   -- `demo_db`.`inventory_items` AS `inventory_items`
   `demo_db`.`inventory_items` AS `inventory`
    LEFT JOIN `demo_db`.`products` AS `products` ON `inventory`.`product_id` = `products`.`id`
WHERE ((( `inventory`.`sold_at` ) >= ((TIMESTAMP('2019-01-01'))) AND ( `inventory`.`sold_at` ) < ((DATE_ADD(TIMESTAMP('2019-01-01'),INTERVAL 1 year)))))
GROUP BY
    1,
    2,
    3,
    4 ;;
    persist_for: "8 hours"
    indexes: ["sku"]
  }

  dimension: product_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.product_id ;;
  }

  dimension_group: sold {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.sold_at ;;
  }
  measure: count {
    type: count
  #  drill_fields: [inventory_items.product_id]
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension: item_name {
    type: string
    sql: ${TABLE}.item_name ;;
  }




 }
