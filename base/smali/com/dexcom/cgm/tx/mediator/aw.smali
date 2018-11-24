.class public Lcom/dexcom/cgm/tx/mediator/aw;
.super Ljava/lang/Object;
.source "RandomByteGenerator.java"


# instance fields
.field private final m_random:Ljava/security/SecureRandom;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 2015
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2016
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/dexcom/cgm/tx/mediator/aw;->m_random:Ljava/security/SecureRandom;

    return-void
.end method


# virtual methods
.method public nextBytes([B)V
    .locals 1

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/aw;->m_random:Ljava/security/SecureRandom;

    invoke-virtual {v0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1022
    return-void
.end method
