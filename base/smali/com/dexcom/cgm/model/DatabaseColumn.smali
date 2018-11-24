.class public interface abstract annotation Lcom/dexcom/cgm/model/DatabaseColumn;
.super Ljava/lang/Object;
.source "DatabaseColumn.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/dexcom/cgm/model/DatabaseColumn;
        version = 0x1
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final RECORDED_TIME_STAMP:Ljava/lang/String; = "recorded_time_stamp"

.field public static final RECORD_ID:Ljava/lang/String; = "record_id"


# virtual methods
.method public abstract value()Ljava/lang/String;
.end method

.method public abstract version()I
.end method
