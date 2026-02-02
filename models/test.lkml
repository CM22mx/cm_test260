include: "/views/order_items.view.lkml"
include: "/views/orders.view.lkml"
include: "/views/inventory_items.view.lkml"
include: "/views/users.view.lkml"
include: "/views/products.view.lkml"
#include: "/tarundashboard.dashboard.lookml"
#include: "/EE.dashboard.lookml"
#include: "/F_dashboard.dashboard.lookml"
#include: "/G_dashbaord.dashboard.lookml"
#include: "/H_dashbaord.dashboard.lookml"
#include: "/I_dashboard.dashboard.lookml"
#include: "/K_dashboard.dashboard.lookml"
#include: "/L_dashbaord.dashboard.lookml"
#include: "/M_dashbaord.dashboard.lookml"
#include: "/N_dashboard.dashboard.lookml"
#include: "/O_dashboard.dashboard.lookml"
#include: "/j_dashboard.dashboard.lookml"
#include: "/P_dashboard.dashboard.lookml"
#include: "/Q_dashboard.dashboard.lookml"
#include: "/R_dashboard.dashboard.lookml"
#include: "/S_dashboard.dashboard.lookml"
#include: "/T_dashboard.dashboard.lookml"
#include: "/U_dashboard.dashboard.lookml"
#include: "/Y_dashboard.dashboard.lookml"
#include: "/Z_dashboard.dashboard.lookml"
#include: "/v_dashboard.dashboard.lookml"

#
explore: order_items {
  sql_always_where: ${order_id} ;;
  join: orders {
    type: left_outer
    sql_on: ${order_items.order_id} = ${orders.id} ;;
    relationship: many_to_one
  }

  join: inventory_items {
    type: left_outer
    sql_on: ${order_items.inventory_item_id} = ${inventory_items.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${orders.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: products {
    type: left_outer
    sql_on: ${inventory_items.product_id} = ${products.id} ;;
    relationship: many_to_one
  }
}
