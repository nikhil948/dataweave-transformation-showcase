%dw 2.0
output application/csv header=true
---
payload map (txn) -> {
  "Transaction ID": txn.txnId,
  "Product":        txn.product,
  "Quantity":       txn.qty,
  "Unit Price":     txn.unitPrice,
  "Total Value":    txn.qty * txn.unitPrice
}
