.class public final Lcom/dexcom/cgm/tx/mediator/q;
.super Ljava/lang/Object;
.source "CgmCommandResponsesImpl.java"

# interfaces
.implements Lcom/dexcom/cgm/tx/mediator/p;


# instance fields
.field private final m_commands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/CgmCommand;",
            ">;"
        }
    .end annotation
.end field

.field private final m_responses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/dexcom/cgm/model/CgmCommand;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/CgmCommand;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dexcom/cgm/tx/mediator/q;->m_responses:Ljava/util/HashMap;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/dexcom/cgm/tx/mediator/q;->m_commands:Ljava/util/List;

    .line 23
    return-void
.end method


# virtual methods
.method public final getCalibration(Lcom/dexcom/cgm/model/CgmCommand;)Lcom/dexcom/cgm/tx/mediator/o;
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/q;->m_responses:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 65
    if-nez v0, :cond_0

    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No matching command."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    instance-of v1, v0, Lcom/dexcom/cgm/tx/mediator/o;

    if-nez v1, :cond_1

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not a calibration command."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_1
    check-cast v0, Lcom/dexcom/cgm/tx/mediator/o;

    return-object v0
.end method

.method public final bridge synthetic getCommandRequests()Ljava/lang/Iterable;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/dexcom/cgm/tx/mediator/q;->getCommandRequests()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getCommandRequests()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/CgmCommand;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/q;->m_commands:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getStartSession(Lcom/dexcom/cgm/model/CgmCommand;)Lcom/dexcom/cgm/tx/mediator/bb;
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/q;->m_responses:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 35
    if-nez v0, :cond_0

    .line 37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No matching command."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    instance-of v1, v0, Lcom/dexcom/cgm/tx/mediator/bb;

    if-nez v1, :cond_1

    .line 41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not a start session command."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_1
    check-cast v0, Lcom/dexcom/cgm/tx/mediator/bb;

    return-object v0
.end method

.method public final getStopSession(Lcom/dexcom/cgm/model/CgmCommand;)Lcom/dexcom/cgm/tx/mediator/bc;
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/q;->m_responses:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 50
    if-nez v0, :cond_0

    .line 52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No matching command."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    instance-of v1, v0, Lcom/dexcom/cgm/tx/mediator/bc;

    if-nez v1, :cond_1

    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not a stop session command."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_1
    check-cast v0, Lcom/dexcom/cgm/tx/mediator/bc;

    return-object v0
.end method

.method public final setResponse(Lcom/dexcom/cgm/tx/mediator/bb;)V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/q;->m_responses:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/dexcom/cgm/tx/mediator/bb;->getCommand()Lcom/dexcom/cgm/model/CgmCommand;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    return-void
.end method

.method public final setResponse(Lcom/dexcom/cgm/tx/mediator/bc;)V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/q;->m_responses:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/dexcom/cgm/tx/mediator/bc;->getCommand()Lcom/dexcom/cgm/model/CgmCommand;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    return-void
.end method

.method public final setResponse(Lcom/dexcom/cgm/tx/mediator/o;)V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/q;->m_responses:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/dexcom/cgm/tx/mediator/o;->getCommand()Lcom/dexcom/cgm/model/CgmCommand;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{commands="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/q;->m_commands:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", responses="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/q;->m_responses:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
