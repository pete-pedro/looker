connection: "peteandpedro"

# include all the views
include: "/views/**/*.view"

#datagroup: peteandpedro_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
#  max_cache_age: "1 hour"
#}

#persist_with: peteandpedro_default_datagroup

explore: new_users_over_time {

}

explore: applied_discount {
  join: checkout_line {
    type: left_outer
    sql_on: ${applied_discount.checkout_line_id} = ${checkout_line.id} ;;
    relationship: many_to_one
  }

  join: price_rule {
    type: left_outer
    sql_on: ${applied_discount.price_rule_id} = ${price_rule.id} ;;
    relationship: many_to_one
  }

  join: checkout_shipping_line {
    type: left_outer
    sql_on: ${applied_discount.checkout_shipping_line_id} = ${checkout_shipping_line.id} ;;
    relationship: many_to_one
  }

  join: checkout {
    type: left_outer
    sql_on: ${checkout_line.checkout_id} = ${checkout.id} ;;
    relationship: many_to_one
  }

  join: product {
    type: left_outer
    sql_on: ${checkout_line.product_id} = ${product.id} ;;
    relationship: many_to_one
  }

  join: location {
    type: left_outer
    sql_on: ${checkout.location_id} = ${location.id} ;;
    relationship: many_to_one
  }

  join: customer {
    type: left_outer
    sql_on: ${checkout.customer_id} = ${customer.id} ;;
    relationship: many_to_one
  }
}

explore: checkout {
  join: location {
    type: left_outer
    sql_on: ${checkout.location_id} = ${location.id} ;;
    relationship: many_to_one
  }

  join: customer {
    type: left_outer
    sql_on: ${checkout.customer_id} = ${customer.id} ;;
    relationship: many_to_one
  }
}

explore: checkout_discount_code {
  join: checkout {
    type: left_outer
    sql_on: ${checkout_discount_code.checkout_id} = ${checkout.id} ;;
    relationship: many_to_one
  }

  join: location {
    type: left_outer
    sql_on: ${checkout.location_id} = ${location.id} ;;
    relationship: many_to_one
  }

  join: customer {
    type: left_outer
    sql_on: ${checkout.customer_id} = ${customer.id} ;;
    relationship: many_to_one
  }
}

explore: checkout_line {
  join: checkout {
    type: left_outer
    sql_on: ${checkout_line.checkout_id} = ${checkout.id} ;;
    relationship: many_to_one
  }

  join: product {
    type: left_outer
    sql_on: ${checkout_line.product_id} = ${product.id} ;;
    relationship: many_to_one
  }

  join: location {
    type: left_outer
    sql_on: ${checkout.location_id} = ${location.id} ;;
    relationship: many_to_one
  }

  join: customer {
    type: left_outer
    sql_on: ${checkout.customer_id} = ${customer.id} ;;
    relationship: many_to_one
  }
}

explore: checkout_shipping_line {
  join: checkout {
    type: left_outer
    sql_on: ${checkout_shipping_line.checkout_id} = ${checkout.id} ;;
    relationship: many_to_one
  }

  join: location {
    type: left_outer
    sql_on: ${checkout.location_id} = ${location.id} ;;
    relationship: many_to_one
  }

  join: customer {
    type: left_outer
    sql_on: ${checkout.customer_id} = ${customer.id} ;;
    relationship: many_to_one
  }
}

explore: checkout_tax_line {
  join: checkout_line {
    type: left_outer
    sql_on: ${checkout_tax_line.checkout_line_id} = ${checkout_line.id} ;;
    relationship: many_to_one
  }

  join: checkout_shipping_line {
    type: left_outer
    sql_on: ${checkout_tax_line.checkout_shipping_line_id} = ${checkout_shipping_line.id} ;;
    relationship: many_to_one
  }

  join: checkout {
    type: left_outer
    sql_on: ${checkout_tax_line.checkout_id} = ${checkout.id} ;;
    relationship: many_to_one
  }

  join: product {
    type: left_outer
    sql_on: ${checkout_line.product_id} = ${product.id} ;;
    relationship: many_to_one
  }

  join: location {
    type: left_outer
    sql_on: ${checkout.location_id} = ${location.id} ;;
    relationship: many_to_one
  }

  join: customer {
    type: left_outer
    sql_on: ${checkout.customer_id} = ${customer.id} ;;
    relationship: many_to_one
  }
}

explore: checkout_url_tag {
  join: checkout {
    type: left_outer
    sql_on: ${checkout_url_tag.checkout_id} = ${checkout.id} ;;
    relationship: many_to_one
  }

  join: location {
    type: left_outer
    sql_on: ${checkout.location_id} = ${location.id} ;;
    relationship: many_to_one
  }

  join: customer {
    type: left_outer
    sql_on: ${checkout.customer_id} = ${customer.id} ;;
    relationship: many_to_one
  }
}

explore: collect {
  join: collection {
    type: left_outer
    sql_on: ${collect.collection_id} = ${collection.id} ;;
    relationship: many_to_one
  }

  join: product {
    type: left_outer
    sql_on: ${collect.product_id} = ${product.id} ;;
    relationship: many_to_one
  }
}

explore: collection {}

explore: customer {}

explore: customer_address {
  join: customer {
    type: left_outer
    sql_on: ${customer_address.customer_id} = ${customer.id} ;;
    relationship: many_to_one
  }
}

explore: customer_tag {
  join: customer {
    type: left_outer
    sql_on: ${customer_tag.customer_id} = ${customer.id} ;;
    relationship: many_to_one
  }
}

explore: discount_allocation {
  join: order_line {
    type: left_outer
    sql_on: ${discount_allocation.order_line_id} = ${order_line.id} ;;
    relationship: many_to_one
  }

  join: product {
    type: left_outer
    sql_on: ${order_line.product_id} = ${product.id} ;;
    relationship: many_to_one
  }

  join: order {
    type: left_outer
    sql_on: ${order_line.order_id} = ${order.id} ;;
    relationship: many_to_one
  }

  join: location {
    type: left_outer
    sql_on: ${order.location_id} = ${location.id} ;;
    relationship: many_to_one
  }

  join: customer {
    type: left_outer
    sql_on: ${order.customer_id} = ${customer.id} ;;
    relationship: many_to_one
  }
}

explore: discount_application {
  join: order {
    type: left_outer
    sql_on: ${discount_application.order_id} = ${order.id} ;;
    relationship: many_to_one
  }

  join: location {
    type: left_outer
    sql_on: ${order.location_id} = ${location.id} ;;
    relationship: many_to_one
  }

  join: customer {
    type: left_outer
    sql_on: ${order.customer_id} = ${customer.id} ;;
    relationship: many_to_one
  }
}

explore: discount_code {
  join: price_rule {
    type: left_outer
    sql_on: ${discount_code.price_rule_id} = ${price_rule.id} ;;
    relationship: many_to_one
  }
}

explore: fivetran_audit {}

explore: fulfillment {
  join: order {
    type: left_outer
    sql_on: ${fulfillment.order_id} = ${order.id} ;;
    relationship: many_to_one
  }

  join: location {
    type: left_outer
    sql_on: ${fulfillment.location_id} = ${location.id} ;;
    relationship: many_to_one
  }

  join: customer {
    type: left_outer
    sql_on: ${order.customer_id} = ${customer.id} ;;
    relationship: many_to_one
  }
}

explore: fulfillment_event {
  join: fulfillment {
    type: left_outer
    sql_on: ${fulfillment_event.fulfillment_id} = ${fulfillment.id} ;;
    relationship: many_to_one
  }

  join: order {
    type: left_outer
    sql_on: ${fulfillment_event.order_id} = ${order.id} ;;
    relationship: many_to_one
  }

  join: location {
    type: left_outer
    sql_on: ${fulfillment.location_id} = ${location.id} ;;
    relationship: many_to_one
  }

  join: customer {
    type: left_outer
    sql_on: ${order.customer_id} = ${customer.id} ;;
    relationship: many_to_one
  }
}

explore: fulfillment_order_line {
  join: order_line {
    type: left_outer
    sql_on: ${fulfillment_order_line.order_line_id} = ${order_line.id} ;;
    relationship: many_to_one
  }

  join: fulfillment {
    type: left_outer
    sql_on: ${fulfillment_order_line.fulfillment_id} = ${fulfillment.id} ;;
    relationship: many_to_one
  }

  join: product {
    type: left_outer
    sql_on: ${order_line.product_id} = ${product.id} ;;
    relationship: many_to_one
  }

  join: order {
    type: left_outer
    sql_on: ${order_line.order_id} = ${order.id} ;;
    relationship: many_to_one
  }

  join: location {
    type: left_outer
    sql_on: ${order.location_id} = ${location.id} ;;
    relationship: many_to_one
  }

  join: customer {
    type: left_outer
    sql_on: ${order.customer_id} = ${customer.id} ;;
    relationship: many_to_one
  }
}

explore: location {}

explore: order {
  join: location {
    type: left_outer
    sql_on: ${order.location_id} = ${location.id} ;;
    relationship: many_to_one
  }

  join: customer {
    type: left_outer
    sql_on: ${order.customer_id} = ${customer.id} ;;
    relationship: many_to_one
  }

  join: customer_address {
    sql_on: ${customer_address.customer_id} = ${customer.id} ;;
    relationship: many_to_one
  }

  join: order_line {
    sql_on: ${order_line.order_id} = ${order.id};;
    relationship: one_to_many
  }
}

explore: order_discount_code {
  join: order {
    type: left_outer
    sql_on: ${order_discount_code.order_id} = ${order.id} ;;
    relationship: many_to_one
  }

  join: location {
    type: left_outer
    sql_on: ${order.location_id} = ${location.id} ;;
    relationship: many_to_one
  }

  join: customer {
    type: left_outer
    sql_on: ${order.customer_id} = ${customer.id} ;;
    relationship: many_to_one
  }
}

explore: order_line {
  join: product {
    type: left_outer
    sql_on: ${order_line.product_id} = ${product.id} ;;
    relationship: many_to_one
  }

  join: order {
    type: left_outer
    sql_on: ${order_line.order_id} = ${order.id} ;;
    relationship: many_to_one
  }

  join: location {
    type: left_outer
    sql_on: ${order.location_id} = ${location.id} ;;
    relationship: many_to_one
  }

  join: customer {
    type: left_outer
    sql_on: ${order.customer_id} = ${customer.id} ;;
    relationship: many_to_one
  }
}

explore: order_line_refund {
  join: order_line {
    type: left_outer
    sql_on: ${order_line_refund.order_line_id} = ${order_line.id} ;;
    relationship: many_to_one
  }

  join: refund {
    type: left_outer
    sql_on: ${order_line_refund.refund_id} = ${refund.id} ;;
    relationship: many_to_one
  }

  join: location {
    type: left_outer
    sql_on: ${order_line_refund.location_id} = ${location.id} ;;
    relationship: many_to_one
  }

  join: product {
    type: left_outer
    sql_on: ${order_line.product_id} = ${product.id} ;;
    relationship: many_to_one
  }

  join: order {
    type: left_outer
    sql_on: ${order_line.order_id} = ${order.id} ;;
    relationship: many_to_one
  }

  join: customer {
    type: left_outer
    sql_on: ${order.customer_id} = ${customer.id} ;;
    relationship: many_to_one
  }
}

explore: order_note_attribute {
  join: order {
    type: left_outer
    sql_on: ${order_note_attribute.order_id} = ${order.id} ;;
    relationship: many_to_one
  }

  join: location {
    type: left_outer
    sql_on: ${order.location_id} = ${location.id} ;;
    relationship: many_to_one
  }

  join: customer {
    type: left_outer
    sql_on: ${order.customer_id} = ${customer.id} ;;
    relationship: many_to_one
  }
}

explore: order_shipping_line {
  join: order {
    type: left_outer
    sql_on: ${order_shipping_line.order_id} = ${order.id} ;;
    relationship: many_to_one
  }

  join: location {
    type: left_outer
    sql_on: ${order.location_id} = ${location.id} ;;
    relationship: many_to_one
  }

  join: customer {
    type: left_outer
    sql_on: ${order.customer_id} = ${customer.id} ;;
    relationship: many_to_one
  }
}

explore: order_shipping_tax_line {
  join: order_shipping_line {
    type: left_outer
    sql_on: ${order_shipping_tax_line.order_shipping_line_id} = ${order_shipping_line.id} ;;
    relationship: many_to_one
  }

  join: order {
    type: left_outer
    sql_on: ${order_shipping_line.order_id} = ${order.id} ;;
    relationship: many_to_one
  }

  join: location {
    type: left_outer
    sql_on: ${order.location_id} = ${location.id} ;;
    relationship: many_to_one
  }

  join: customer {
    type: left_outer
    sql_on: ${order.customer_id} = ${customer.id} ;;
    relationship: many_to_one
  }
}

explore: order_tag {
  join: order {
    type: left_outer
    sql_on: ${order_tag.order_id} = ${order.id} ;;
    relationship: many_to_one
  }

  join: location {
    type: left_outer
    sql_on: ${order.location_id} = ${location.id} ;;
    relationship: many_to_one
  }

  join: customer {
    type: left_outer
    sql_on: ${order.customer_id} = ${customer.id} ;;
    relationship: many_to_one
  }
}

explore: order_url_tag {
  join: order {
    type: left_outer
    sql_on: ${order_url_tag.order_id} = ${order.id} ;;
    relationship: many_to_one
  }

  join: location {
    type: left_outer
    sql_on: ${order.location_id} = ${location.id} ;;
    relationship: many_to_one
  }

  join: customer {
    type: left_outer
    sql_on: ${order.customer_id} = ${customer.id} ;;
    relationship: many_to_one
  }
}

explore: price_rule {}

explore: product {}

explore: product_option {
  join: product {
    type: left_outer
    sql_on: ${product_option.product_id} = ${product.id} ;;
    relationship: many_to_one
  }
}

explore: product_tag {
  join: product {
    type: left_outer
    sql_on: ${product_tag.product_id} = ${product.id} ;;
    relationship: many_to_one
  }
}

explore: product_variant {
  join: product {
    type: left_outer
    sql_on: ${product_variant.product_id} = ${product.id} ;;
    relationship: many_to_one
  }
}

explore: refund {}

explore: tax_line {
  join: order_line {
    type: left_outer
    sql_on: ${tax_line.order_line_id} = ${order_line.id} ;;
    relationship: many_to_one
  }

  join: product {
    type: left_outer
    sql_on: ${order_line.product_id} = ${product.id} ;;
    relationship: many_to_one
  }

  join: order {
    type: left_outer
    sql_on: ${order_line.order_id} = ${order.id} ;;
    relationship: many_to_one
  }

  join: location {
    type: left_outer
    sql_on: ${order.location_id} = ${location.id} ;;
    relationship: many_to_one
  }

  join: customer {
    type: left_outer
    sql_on: ${order.customer_id} = ${customer.id} ;;
    relationship: many_to_one
  }
}

explore: transaction {
  always_join: [refund]
  join: location {
    type: left_outer
    sql_on: ${transaction.location_id} = ${location.id} ;;
    relationship: many_to_one
  }

  join: refund {
    type: left_outer
    sql_on: ${transaction.refund_id} = ${refund.id} ;;
    relationship: many_to_one
  }

  join: order {
    type: left_outer
    sql_on: ${transaction.order_id} = ${order.id} ;;
    relationship: many_to_one
  }

  join: order_line {
    type: left_outer
    sql_on: ${order.id} = ${order_line.order_id} ;;
    relationship: many_to_one
  }

  join: order_line_refund {
    type: left_outer
    sql_on: ${order_line_refund.refund_id} = ${refund.id} ;;
    relationship: many_to_one
  }

  join: product {
    type: left_outer
    sql_on: ${product.id} = ${order_line.product_id} ;;
    relationship: many_to_one
  }

  join: product_option{
    type: left_outer
    sql_on: ${product.id} = ${product_option.product_id} ;;
    relationship: many_to_one
  }


  join: customer {
    type: left_outer
    sql_on: ${order.customer_id} = ${customer.id} ;;
    relationship: many_to_one
  }

  join: shipping {
    type: left_outer
    sql_on: ${order.id} = ${shipping.market_order_id} ;;
    relationship: many_to_one
  }

  join: order_discount_code {
    type: left_outer
    sql_on: ${order.id} = ${order_discount_code.order_id} ;;
    relationship: many_to_one
  }

  join: discount_code {
    type: left_outer
    sql_on: ${order_discount_code.code} = ${discount_code.code} ;;
    relationship: many_to_one
  }

  join: checkout_discount_code {
    type: left_outer
    sql_on: ${discount_code.id} = ${checkout_discount_code.discount_id} ;;
    relationship: many_to_one
  }
}

explore: unique_shipping_packages {
  join: order {
    type: left_outer
    sql_on: ${unique_shipping_packages.package_id} = ${order.id} ;;
    relationship: many_to_one
  }

  join: transaction {
    type: left_outer
    sql_on: ${transaction.order_id} = ${order.id} ;;
    relationship: many_to_one
  }

  join: shipping {
    type: left_outer
    sql_on: ${shipping.market_order_id} = ${order.id} ;;
    relationship: many_to_one
  }
}

explore: shipping {
  join: order {
    type: left_outer
    sql_on: ${shipping.market_order_id} = ${order.id} ;;
    relationship: many_to_one
  }

  join: transaction {
    type: left_outer
    sql_on: ${transaction.order_id} = ${order.id} ;;
    relationship: many_to_one
  }
}
