%dw 2.0
output application/xml
---
{
  catalog: {
    (payload.products map (product) -> {
      item @(id: product.id, available: product.inStock): {
        name:  product.name,
        price: product.price
      }
    })
  }
}
