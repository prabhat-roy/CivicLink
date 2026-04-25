db.createCollection("grievance", {
  validator: {
    $jsonSchema: {
      bsonType: "object",
      required: ["grievance_id", "complainant_token", "category", "status", "filed_at"],
      properties: {
        grievance_id:      { bsonType: "string" },
        complainant_token: { bsonType: "string" },
        category:          { bsonType: "string" },
        status:            { enum: ["open", "in_progress", "escalated", "resolved", "closed"] },
        filed_at:          { bsonType: "date" }
      }
    }
  }
});
db.grievance.createIndex({ grievance_id: 1 }, { unique: true });
db.grievance.createIndex({ complainant_token: 1 });
db.grievance.createIndex({ status: 1, filed_at: -1 });
