.class public Lcom/dexcom/cgm/activities/AndroidLogProxy;
.super Ljava/lang/Object;
.source "AndroidLogProxy.java"

# interfaces
.implements Lcom/dexcom/cgm/f/d;


# instance fields
.field private final m_shouldLogToLogcat:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-boolean p1, p0, Lcom/dexcom/cgm/activities/AndroidLogProxy;->m_shouldLogToLogcat:Z

    .line 20
    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/AndroidLogProxy;->m_shouldLogToLogcat:Z

    if-nez v0, :cond_0

    .line 80
    const/4 v0, 0x0

    .line 82
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
    .line 88
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/AndroidLogProxy;->m_shouldLogToLogcat:Z

    if-nez v0, :cond_0

    .line 89
    const/4 v0, 0x0

    .line 91
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
    .line 25
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/AndroidLogProxy;->m_shouldLogToLogcat:Z

    if-nez v0, :cond_0

    .line 26
    const/4 v0, 0x0

    .line 28
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
    .line 34
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/AndroidLogProxy;->m_shouldLogToLogcat:Z

    if-nez v0, :cond_0

    .line 35
    const/4 v0, 0x0

    .line 37
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
    .line 61
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/AndroidLogProxy;->m_shouldLogToLogcat:Z

    if-nez v0, :cond_0

    .line 62
    const/4 v0, 0x0

    .line 64
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
    .line 70
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/AndroidLogProxy;->m_shouldLogToLogcat:Z

    if-nez v0, :cond_0

    .line 71
    const/4 v0, 0x0

    .line 73
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
    .line 97
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/AndroidLogProxy;->m_shouldLogToLogcat:Z

    if-nez v0, :cond_0

    .line 98
    const/4 v0, 0x0

    .line 100
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
    .line 106
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/AndroidLogProxy;->m_shouldLogToLogcat:Z

    if-nez v0, :cond_0

    .line 107
    const/4 v0, 0x0

    .line 109
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
    .line 43
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/AndroidLogProxy;->m_shouldLogToLogcat:Z

    if-nez v0, :cond_0

    .line 44
    const/4 v0, 0x0

    .line 46
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
    .line 52
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/AndroidLogProxy;->m_shouldLogToLogcat:Z

    if-nez v0, :cond_0

    .line 53
    const/4 v0, 0x0

    .line 55
    :goto_0
    return v0

    :cond_0
    invoke-static {p1, p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    goto :goto_0
.end method
