.class Lcom/evancharlton/mileage/ImportActivity$4;
.super Ljava/lang/Object;
.source "ImportActivity.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evancharlton/mileage/ImportActivity;->getFilter()Ljava/io/FilenameFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evancharlton/mileage/ImportActivity;


# direct methods
.method constructor <init>(Lcom/evancharlton/mileage/ImportActivity;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/evancharlton/mileage/ImportActivity$4;->this$0:Lcom/evancharlton/mileage/ImportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 3
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 135
    invoke-static {}, Lcom/evancharlton/mileage/ImportActivity;->access$600()[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/evancharlton/mileage/ImportActivity$4;->this$0:Lcom/evancharlton/mileage/ImportActivity;

    invoke-static {v2}, Lcom/evancharlton/mileage/ImportActivity;->access$100(Lcom/evancharlton/mileage/ImportActivity;)Landroid/widget/Spinner;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    aget-object v0, v1, v2

    .line 136
    .local v0, "extension":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method
