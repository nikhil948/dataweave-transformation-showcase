%dw 2.0
output application/json
---
{
  transactionReference: payload.txn_ref,
  transactionDate:      payload.txn_dt as Date {format: "yyyy-MM-dd"}
                          as String {format: "dd-MMM-yyyy"},
  accountNumber:        payload.acct_no,
  transactionAmount:    payload.amt,
  transactionType:      if (payload.txn_type == "CR") "CREDIT" else "DEBIT",
  narration:            upper(payload.remarks)
}
