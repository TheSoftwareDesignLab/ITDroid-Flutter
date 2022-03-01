.class Lcom/evancharlton/mileage/adapters/FillupAdapter$1;
.super Landroid/database/ContentObserver;
.source "FillupAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evancharlton/mileage/adapters/FillupAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evancharlton/mileage/adapters/FillupAdapter;


# direct methods
.method constructor <init>(Lcom/evancharlton/mileage/adapters/FillupAdapter;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/evancharlton/mileage/adapters/FillupAdapter$1;->this$0:Lcom/evancharlton/mileage/adapters/FillupAdapter;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 51
    iget-object v0, p0, Lcom/evancharlton/mileage/adapters/FillupAdapter$1;->this$0:Lcom/evancharlton/mileage/adapters/FillupAdapter;

    invoke-virtual {v0}, Lcom/evancharlton/mileage/adapters/FillupAdapter;->requery()V

    .line 52
    return-void
.end method
