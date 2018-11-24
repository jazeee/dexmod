.class public final Lcom/dexcom/cgm/f/b;
.super Ljava/lang/Object;
.source "DexLog.java"


# static fields
.field private static s_proxy:Lcom/dexcom/cgm/f/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/dexcom/cgm/f/c;

    invoke-direct {v0}, Lcom/dexcom/cgm/f/c;-><init>()V

    sput-object v0, Lcom/dexcom/cgm/f/b;->s_proxy:Lcom/dexcom/cgm/f/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lcom/dexcom/cgm/f/b;->s_proxy:Lcom/dexcom/cgm/f/d;

    invoke-interface {v0, p0, p1}, Lcom/dexcom/cgm/f/d;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    .prologue
    .line 144
    sget-object v0, Lcom/dexcom/cgm/f/b;->s_proxy:Lcom/dexcom/cgm/f/d;

    invoke-interface {v0, p0, p1, p2}, Lcom/dexcom/cgm/f/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/dexcom/cgm/f/b;->s_proxy:Lcom/dexcom/cgm/f/d;

    invoke-interface {v0, p0, p1}, Lcom/dexcom/cgm/f/d;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/dexcom/cgm/f/b;->s_proxy:Lcom/dexcom/cgm/f/d;

    invoke-interface {v0, p0, p1, p2}, Lcom/dexcom/cgm/f/d;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 129
    sget-object v0, Lcom/dexcom/cgm/f/b;->s_proxy:Lcom/dexcom/cgm/f/d;

    invoke-interface {v0, p0, p1}, Lcom/dexcom/cgm/f/d;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lcom/dexcom/cgm/f/b;->s_proxy:Lcom/dexcom/cgm/f/d;

    invoke-interface {v0, p0, p1, p2}, Lcom/dexcom/cgm/f/d;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static initialize(Lcom/dexcom/cgm/f/d;)V
    .locals 0

    .prologue
    .line 104
    sput-object p0, Lcom/dexcom/cgm/f/b;->s_proxy:Lcom/dexcom/cgm/f/d;

    .line 105
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 149
    sget-object v0, Lcom/dexcom/cgm/f/b;->s_proxy:Lcom/dexcom/cgm/f/d;

    invoke-interface {v0, p0, p1}, Lcom/dexcom/cgm/f/d;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    .prologue
    .line 154
    sget-object v0, Lcom/dexcom/cgm/f/b;->s_proxy:Lcom/dexcom/cgm/f/d;

    invoke-interface {v0, p0, p1, p2}, Lcom/dexcom/cgm/f/d;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 119
    sget-object v0, Lcom/dexcom/cgm/f/b;->s_proxy:Lcom/dexcom/cgm/f/d;

    invoke-interface {v0, p0, p1}, Lcom/dexcom/cgm/f/d;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    .prologue
    .line 124
    sget-object v0, Lcom/dexcom/cgm/f/b;->s_proxy:Lcom/dexcom/cgm/f/d;

    invoke-interface {v0, p0, p1, p2}, Lcom/dexcom/cgm/f/d;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method
