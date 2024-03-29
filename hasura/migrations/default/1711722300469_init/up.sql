CREATE TABLE users (
  "id" uuid PRIMARY KEY,
  "name" TEXT,
  "email" TEXT,
  "firebaseId" TEXT,
  "status" TEXT,
  "avatar" TEXT,
  "address" TEXT,
  "phoneNumber" TEXT,
  "isMuted" BOOLEAN,
  "createdAt" TIMESTAMP DEFAULT now(),
  "updatedAt" TIMESTAMP DEFAULT now()
);

CREATE TABLE daily_tasks (
  "id" uuid PRIMARY KEY,
  "userId" uuid,
  "priority" TEXT,
  "description" TEXT,
  "date" TIMESTAMP,
  "status" TEXT,
  "taskStatus" TEXT,
  "month" INTEGER,
  "year" INTEGER,
  "createdAt" TIMESTAMP DEFAULT now(),
  "updatedAt" TIMESTAMP DEFAULT now(),
  FOREIGN KEY ("userId") REFERENCES users("id")
);

CREATE TABLE notes (
  "id" uuid PRIMARY KEY,
  "userId" uuid,
  "title" TEXT,
  "description" TEXT,
  "createdAt" TIMESTAMP DEFAULT now(),
  "updatedAt" TIMESTAMP DEFAULT now(),
  "markedAsDone" BOOLEAN,
  FOREIGN KEY ("userId") REFERENCES users("id")
);
