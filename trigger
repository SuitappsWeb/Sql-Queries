DISABLE TRIGGER trg_Purchase_Credit ON Purchase;


SELECT 
    t.name AS TriggerName,
    OBJECT_NAME(t.parent_id) AS TableName,
    t.is_disabled,
    CASE 
        WHEN t.is_disabled = 0 THEN 'Enabled'
        WHEN t.is_disabled = 1 THEN 'Disabled'
    END AS Status
FROM sys.triggers t
WHERE t.parent_class_desc = 'OBJECT_OR_COLUMN';




ENABLE TRIGGER trg_Purchase_Credit ON Purchase;
