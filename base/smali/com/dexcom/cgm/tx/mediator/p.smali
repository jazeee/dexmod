.class public interface abstract Lcom/dexcom/cgm/tx/mediator/p;
.super Ljava/lang/Object;
.source "CgmCommandResponses.java"


# virtual methods
.method public abstract getCalibration(Lcom/dexcom/cgm/model/CgmCommand;)Lcom/dexcom/cgm/tx/mediator/o;
.end method

.method public abstract getCommandRequests()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/dexcom/cgm/model/CgmCommand;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStartSession(Lcom/dexcom/cgm/model/CgmCommand;)Lcom/dexcom/cgm/tx/mediator/bb;
.end method

.method public abstract getStopSession(Lcom/dexcom/cgm/model/CgmCommand;)Lcom/dexcom/cgm/tx/mediator/bc;
.end method
