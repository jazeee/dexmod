.class public Lcom/dexcom/cgm/model/Follower$Builder;
.super Ljava/lang/Object;
.source "Follower.java"


# instance fields
.field private follower:Lcom/dexcom/cgm/model/Follower;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Lcom/dexcom/cgm/model/Follower;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/model/Follower;-><init>(Lcom/dexcom/cgm/model/Follower$1;)V

    iput-object v0, p0, Lcom/dexcom/cgm/model/Follower$Builder;->follower:Lcom/dexcom/cgm/model/Follower;

    .line 78
    return-void
.end method


# virtual methods
.method public build()Lcom/dexcom/cgm/model/Follower;
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/dexcom/cgm/model/Follower$Builder;->follower:Lcom/dexcom/cgm/model/Follower;

    .line 163
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/dexcom/cgm/model/Follower$Builder;->follower:Lcom/dexcom/cgm/model/Follower;

    .line 164
    return-object v0
.end method

.method public setContactID(Ljava/util/UUID;)V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/dexcom/cgm/model/Follower$Builder;->follower:Lcom/dexcom/cgm/model/Follower;

    invoke-static {v0, p1}, Lcom/dexcom/cgm/model/Follower;->access$102(Lcom/dexcom/cgm/model/Follower;Ljava/util/UUID;)Ljava/util/UUID;

    .line 83
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/dexcom/cgm/model/Follower$Builder;->follower:Lcom/dexcom/cgm/model/Follower;

    invoke-static {v0, p1}, Lcom/dexcom/cgm/model/Follower;->access$402(Lcom/dexcom/cgm/model/Follower;Ljava/lang/String;)Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setHasTrendPermission(Z)V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/dexcom/cgm/model/Follower$Builder;->follower:Lcom/dexcom/cgm/model/Follower;

    invoke-static {v0, p1}, Lcom/dexcom/cgm/model/Follower;->access$602(Lcom/dexcom/cgm/model/Follower;Z)Z

    .line 108
    return-void
.end method

.method public setHighDelay(I)V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/dexcom/cgm/model/Follower$Builder;->follower:Lcom/dexcom/cgm/model/Follower;

    invoke-static {v0, p1}, Lcom/dexcom/cgm/model/Follower;->access$1502(Lcom/dexcom/cgm/model/Follower;I)I

    .line 153
    return-void
.end method

.method public setHighEnabled(Z)V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/dexcom/cgm/model/Follower$Builder;->follower:Lcom/dexcom/cgm/model/Follower;

    invoke-static {v0, p1}, Lcom/dexcom/cgm/model/Follower;->access$902(Lcom/dexcom/cgm/model/Follower;Z)Z

    .line 123
    return-void
.end method

.method public setHighThreshold(I)V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/dexcom/cgm/model/Follower$Builder;->follower:Lcom/dexcom/cgm/model/Follower;

    invoke-static {v0, p1}, Lcom/dexcom/cgm/model/Follower;->access$1302(Lcom/dexcom/cgm/model/Follower;I)I

    .line 143
    return-void
.end method

.method public setLowDelay(I)V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/dexcom/cgm/model/Follower$Builder;->follower:Lcom/dexcom/cgm/model/Follower;

    invoke-static {v0, p1}, Lcom/dexcom/cgm/model/Follower;->access$1402(Lcom/dexcom/cgm/model/Follower;I)I

    .line 148
    return-void
.end method

.method public setLowEnabled(Z)V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/dexcom/cgm/model/Follower$Builder;->follower:Lcom/dexcom/cgm/model/Follower;

    invoke-static {v0, p1}, Lcom/dexcom/cgm/model/Follower;->access$802(Lcom/dexcom/cgm/model/Follower;Z)Z

    .line 118
    return-void
.end method

.method public setLowThreshold(I)V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/dexcom/cgm/model/Follower$Builder;->follower:Lcom/dexcom/cgm/model/Follower;

    invoke-static {v0, p1}, Lcom/dexcom/cgm/model/Follower;->access$1202(Lcom/dexcom/cgm/model/Follower;I)I

    .line 138
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/dexcom/cgm/model/Follower$Builder;->follower:Lcom/dexcom/cgm/model/Follower;

    invoke-static {v0, p1}, Lcom/dexcom/cgm/model/Follower;->access$302(Lcom/dexcom/cgm/model/Follower;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setNoDataDelay(I)V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/dexcom/cgm/model/Follower$Builder;->follower:Lcom/dexcom/cgm/model/Follower;

    invoke-static {v0, p1}, Lcom/dexcom/cgm/model/Follower;->access$1602(Lcom/dexcom/cgm/model/Follower;I)I

    .line 158
    return-void
.end method

.method public setNoDataEnabled(Z)V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/dexcom/cgm/model/Follower$Builder;->follower:Lcom/dexcom/cgm/model/Follower;

    invoke-static {v0, p1}, Lcom/dexcom/cgm/model/Follower;->access$1002(Lcom/dexcom/cgm/model/Follower;Z)Z

    .line 128
    return-void
.end method

.method public setState(Lcom/dexcom/cgm/model/enums/FollowerState;)V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/dexcom/cgm/model/Follower$Builder;->follower:Lcom/dexcom/cgm/model/Follower;

    invoke-static {v0, p1}, Lcom/dexcom/cgm/model/Follower;->access$502(Lcom/dexcom/cgm/model/Follower;Lcom/dexcom/cgm/model/enums/FollowerState;)Lcom/dexcom/cgm/model/enums/FollowerState;

    .line 103
    return-void
.end method

.method public setSubscriptionID(Ljava/util/UUID;)V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/dexcom/cgm/model/Follower$Builder;->follower:Lcom/dexcom/cgm/model/Follower;

    invoke-static {v0, p1}, Lcom/dexcom/cgm/model/Follower;->access$202(Lcom/dexcom/cgm/model/Follower;Ljava/util/UUID;)Ljava/util/UUID;

    .line 88
    return-void
.end method

.method public setUrgentLowEnabled(Z)V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/dexcom/cgm/model/Follower$Builder;->follower:Lcom/dexcom/cgm/model/Follower;

    invoke-static {v0, p1}, Lcom/dexcom/cgm/model/Follower;->access$702(Lcom/dexcom/cgm/model/Follower;Z)Z

    .line 113
    return-void
.end method

.method public setUrgentLowThreshold(I)V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/dexcom/cgm/model/Follower$Builder;->follower:Lcom/dexcom/cgm/model/Follower;

    invoke-static {v0, p1}, Lcom/dexcom/cgm/model/Follower;->access$1102(Lcom/dexcom/cgm/model/Follower;I)I

    .line 133
    return-void
.end method
