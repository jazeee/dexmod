.class public Lcom/dexcom/cgm/activities/TheApplicationContext;
.super Ljava/lang/Object;
.source "TheApplicationContext.java"


# static fields
.field private static m_applicationContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/dexcom/cgm/activities/TheApplicationContext;->m_applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/dexcom/cgm/activities/TheApplicationContext;->m_applicationContext:Landroid/content/Context;

    .line 18
    return-void
.end method
