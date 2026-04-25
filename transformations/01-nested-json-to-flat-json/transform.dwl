%dw 2.0
output application/json
---
{
  orderId:      payload.order.id,
  customerName: payload.order.customer.name,
  email:        payload.order.customer.contact.email,
  phone:        payload.order.customer.contact.phone,
  totalAmount:  payload.order.amount,
  orderStatus:  upper(payload.order.status)
}
