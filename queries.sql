-- User Authentication Query
SELECT id, name, email, role 
FROM users 
WHERE email = ? AND is_active = 1;

-- Fetch Active Tasks for a User
SELECT t.id, t.title, t.status, t.priority,
       t.created_at, u.name as assigned_to
FROM tasks t
JOIN users u ON t.assigned_to = u.id
WHERE t.user_id = ? 
AND t.status != 'completed'
ORDER BY t.priority DESC, t.created_at ASC;

-- Real-time Task Status Update
UPDATE tasks 
SET status = ?, updated_at = NOW()
WHERE id = ? AND user_id = ?;

-- Dashboard Summary Query
SELECT 
    COUNT(*) as total_tasks,
    SUM(CASE WHEN status='completed' THEN 1 ELSE 0 END) as completed,
    SUM(CASE WHEN status='pending' THEN 1 ELSE 0 END) as pending,
    SUM(CASE WHEN status='in_progress' THEN 1 ELSE 0 END) as in_progress
FROM tasks
WHERE user_id = ?;
