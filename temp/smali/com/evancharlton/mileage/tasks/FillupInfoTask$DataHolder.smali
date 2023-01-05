.class public final Lcom/evancharlton/mileage/tasks/FillupInfoTask$DataHolder;
.super Ljava/lang/Object;
.source "FillupInfoTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evancharlton/mileage/tasks/FillupInfoTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DataHolder"
.end annotation


# instance fields
.field public final data:D

.field public final key:I


# direct methods
.method public constructor <init>(ID)V
    .locals 0
    .param p1, "key"    # I
    .param p2, "data"    # D

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Lcom/evancharlton/mileage/tasks/FillupInfoTask$DataHolder;->key:I

    .line 55
    iput-wide p2, p0, Lcom/evancharlton/mileage/tasks/FillupInfoTask$DataHolder;->data:D

    .line 56
    return-void
.end method
