.class public Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy;
.super Ljava/lang/Object;
.source "AndroidDatabaseLogProxy.java"

# interfaces
.implements Lcom/dexcom/cgm/f/d;


# static fields
.field private static final DATABASE_LOG_LEVEL:Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;


# instance fields
.field private final m_dal:Lcom/dexcom/cgm/d/a;

.field private final m_handler:Landroid/os/Handler;

.field private final m_handlerThread:Landroid/os/HandlerThread;

.field private final m_shouldLogToLogcat:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;->Info:Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;

    sput-object v0, Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy;->DATABASE_LOG_LEVEL:Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;

    return-void
.end method

.method public constructor <init>(Lcom/dexcom/cgm/d/a;Z)V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy;->m_dal:Lcom/dexcom/cgm/d/a;

    .line 59
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DatabaseLogger"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy;->m_handlerThread:Landroid/os/HandlerThread;

    .line 60
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy;->m_handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 61
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy;->m_handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy;->m_handler:Landroid/os/Handler;

    .line 62
    iput-boolean p2, p0, Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy;->m_shouldLogToLogcat:Z

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy;)Lcom/dexcom/cgm/d/a;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy;->m_dal:Lcom/dexcom/cgm/d/a;

    return-object v0
.end method

.method private logToDatabase(Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy;->logToDatabase(Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 178
    return-void
.end method

.method private logToDatabase(Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5

    .prologue
    .line 182
    sget-object v0, Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy;->DATABASE_LOG_LEVEL:Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;

    invoke-virtual {p1, v0}, Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;->isAboveThreshold(Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    :goto_0
    return-void

    .line 187
    :cond_0
    if-eqz p4, :cond_1

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p4}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nStack trace: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 190
    invoke-virtual {p4}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 191
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 190
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy;->m_handler:Landroid/os/Handler;

    new-instance v1, Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$1;

    invoke-direct {v1, p0, p2, p3}, Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$1;-><init>(Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;->Debug:Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;

    invoke-direct {p0, v0, p1, p2}, Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy;->logToDatabase(Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy;->m_shouldLogToLogcat:Z

    if-nez v0, :cond_0

    .line 137
    const/4 v0, 0x0

    .line 139
    :goto_0
    return v0

    :cond_0
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    .prologue
    .line 145
    sget-object v0, Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;->Debug:Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy;->logToDatabase(Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 147
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy;->m_shouldLogToLogcat:Z

    if-nez v0, :cond_0

    .line 148
    const/4 v0, 0x0

    .line 150
    :goto_0
    return v0

    :cond_0
    invoke-static {p1, p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    goto :goto_0
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;->Error:Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;

    invoke-direct {p0, v0, p1, p2}, Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy;->logToDatabase(Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy;->m_shouldLogToLogcat:Z

    if-nez v0, :cond_0

    .line 71
    const/4 v0, 0x0

    .line 73
    :goto_0
    return v0

    :cond_0
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;->Error:Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy;->logToDatabase(Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy;->m_shouldLogToLogcat:Z

    if-nez v0, :cond_0

    .line 82
    const/4 v0, 0x0

    .line 84
    :goto_0
    return v0

    :cond_0
    invoke-static {p1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    goto :goto_0
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;->Info:Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;

    invoke-direct {p0, v0, p1, p2}, Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy;->logToDatabase(Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy;->m_shouldLogToLogcat:Z

    if-nez v0, :cond_0

    .line 115
    const/4 v0, 0x0

    .line 117
    :goto_0
    return v0

    :cond_0
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    .prologue
    .line 123
    sget-object v0, Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;->Info:Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy;->logToDatabase(Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 125
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy;->m_shouldLogToLogcat:Z

    if-nez v0, :cond_0

    .line 126
    const/4 v0, 0x0

    .line 128
    :goto_0
    return v0

    :cond_0
    invoke-static {p1, p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    goto :goto_0
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;->Verbose:Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;

    invoke-direct {p0, v0, p1, p2}, Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy;->logToDatabase(Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy;->m_shouldLogToLogcat:Z

    if-nez v0, :cond_0

    .line 159
    const/4 v0, 0x0

    .line 161
    :goto_0
    return v0

    :cond_0
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    .prologue
    .line 167
    sget-object v0, Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;->Verbose:Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy;->logToDatabase(Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 169
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy;->m_shouldLogToLogcat:Z

    if-nez v0, :cond_0

    .line 170
    const/4 v0, 0x0

    .line 172
    :goto_0
    return v0

    :cond_0
    invoke-static {p1, p2, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    goto :goto_0
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;->Warn:Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;

    invoke-direct {p0, v0, p1, p2}, Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy;->logToDatabase(Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy;->m_shouldLogToLogcat:Z

    if-nez v0, :cond_0

    .line 93
    const/4 v0, 0x0

    .line 95
    :goto_0
    return v0

    :cond_0
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;->Warn:Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy;->logToDatabase(Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy$LogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 103
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy;->m_shouldLogToLogcat:Z

    if-nez v0, :cond_0

    .line 104
    const/4 v0, 0x0

    .line 106
    :goto_0
    return v0

    :cond_0
    invoke-static {p1, p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    goto :goto_0
.end method
