.class Lcom/samsung/android/mateservice/MateShellCommand;
.super Landroid/os/ShellCommand;
.source "MateShellCommand.java"


# instance fields
.field private final mCmdAccessory:Lcom/samsung/android/mateservice/accessory/CmdAccessory;

.field private mOut:Ljava/io/PrintWriter;


# direct methods
.method constructor <init>(Lcom/samsung/android/mateservice/accessory/CmdAccessory;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mateservice/MateShellCommand;->mCmdAccessory:Lcom/samsung/android/mateservice/accessory/CmdAccessory;

    return-void
.end method

.method private static convertHexStrToBytes(Ljava/lang/String;)[B
    .locals 7

    const/4 v4, 0x0

    const/16 v6, 0x10

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    return-object v4

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v3, v2, 0x2

    new-array v0, v3, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    div-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static convertStrToInt(Ljava/lang/String;)I
    .locals 5

    const/4 v3, 0x2

    const/4 v4, -0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    return v4

    :cond_1
    :try_start_0
    const-string/jumbo v2, "0x"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_2

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    :goto_0
    return v1

    :cond_2
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/mateservice/util/UtilLog;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    return v4
.end method

.method private runAdd()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, -0x1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/mateservice/MateShellCommand;->convertStrToInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/mateservice/MateShellCommand;->convertStrToInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    if-eq v2, v3, :cond_0

    if-ne v1, v3, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/mateservice/MateShellCommand;->mOut:Ljava/io/PrintWriter;

    const-string/jumbo v5, "Error! Wrong argument"

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_1
    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/samsung/android/mateservice/MateShellCommand;->mCmdAccessory:Lcom/samsung/android/mateservice/accessory/CmdAccessory;

    iget-object v5, p0, Lcom/samsung/android/mateservice/MateShellCommand;->mOut:Ljava/io/PrintWriter;

    invoke-virtual {v4, v5, v2, v1, v0}, Lcom/samsung/android/mateservice/accessory/CmdAccessory;->add(Ljava/io/PrintWriter;IILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x0

    :cond_2
    return v3
.end method

.method private runAddRaw()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, -0x1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/mateservice/MateShellCommand;->convertHexStrToBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/mateservice/MateShellCommand;->convertHexStrToBytes(Ljava/lang/String;)[B

    move-result-object v1

    if-nez v0, :cond_0

    iget-object v3, p0, Lcom/samsung/android/mateservice/MateShellCommand;->mOut:Ljava/io/PrintWriter;

    const-string/jumbo v4, "Error! Wrong argument"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/mateservice/MateShellCommand;->mCmdAccessory:Lcom/samsung/android/mateservice/accessory/CmdAccessory;

    iget-object v4, p0, Lcom/samsung/android/mateservice/MateShellCommand;->mOut:Ljava/io/PrintWriter;

    invoke-virtual {v3, v4, v0, v1}, Lcom/samsung/android/mateservice/accessory/CmdAccessory;->add(Ljava/io/PrintWriter;[B[B)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    :cond_1
    return v2
.end method

.method private runAttach()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, -0x1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/mateservice/MateShellCommand;->convertStrToInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/mateservice/MateShellCommand;->mOut:Ljava/io/PrintWriter;

    const-string/jumbo v3, "Error! No accessory id"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/mateservice/MateShellCommand;->mCmdAccessory:Lcom/samsung/android/mateservice/accessory/CmdAccessory;

    iget-object v3, p0, Lcom/samsung/android/mateservice/MateShellCommand;->mOut:Ljava/io/PrintWriter;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Lcom/samsung/android/mateservice/accessory/CmdAccessory;->accessoryStateChanged(Ljava/io/PrintWriter;IZ)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    :cond_1
    return v1
.end method

.method private runClear()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/mateservice/MateShellCommand;->mCmdAccessory:Lcom/samsung/android/mateservice/accessory/CmdAccessory;

    iget-object v1, p0, Lcom/samsung/android/mateservice/MateShellCommand;->mOut:Ljava/io/PrintWriter;

    invoke-virtual {v0, v1}, Lcom/samsung/android/mateservice/accessory/CmdAccessory;->clearAll(Ljava/io/PrintWriter;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private runDetach()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/mateservice/MateShellCommand;->convertStrToInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/mateservice/MateShellCommand;->mOut:Ljava/io/PrintWriter;

    const-string/jumbo v3, "Error! No accessory id"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/mateservice/MateShellCommand;->mCmdAccessory:Lcom/samsung/android/mateservice/accessory/CmdAccessory;

    iget-object v4, p0, Lcom/samsung/android/mateservice/MateShellCommand;->mOut:Ljava/io/PrintWriter;

    invoke-virtual {v3, v4, v0, v1}, Lcom/samsung/android/mateservice/accessory/CmdAccessory;->accessoryStateChanged(Ljava/io/PrintWriter;IZ)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private runRemove()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, -0x1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/mateservice/MateShellCommand;->convertStrToInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/mateservice/MateShellCommand;->mOut:Ljava/io/PrintWriter;

    const-string/jumbo v3, "error! No accessory id"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/mateservice/MateShellCommand;->mCmdAccessory:Lcom/samsung/android/mateservice/accessory/CmdAccessory;

    iget-object v3, p0, Lcom/samsung/android/mateservice/MateShellCommand;->mOut:Ljava/io/PrintWriter;

    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/mateservice/accessory/CmdAccessory;->remove(Ljava/io/PrintWriter;I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    :cond_1
    return v1
.end method

.method private runStatus()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/mateservice/MateShellCommand;->mCmdAccessory:Lcom/samsung/android/mateservice/accessory/CmdAccessory;

    iget-object v1, p0, Lcom/samsung/android/mateservice/MateShellCommand;->mOut:Ljava/io/PrintWriter;

    invoke-virtual {v0, v1}, Lcom/samsung/android/mateservice/accessory/CmdAccessory;->showStatus(Ljava/io/PrintWriter;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/mateservice/MateShellCommand;->mOut:Ljava/io/PrintWriter;

    if-nez p1, :cond_0

    invoke-virtual {p0, v2}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v1

    return v1

    :cond_0
    :try_start_0
    const-string/jumbo v1, "add"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/mateservice/MateShellCommand;->runAdd()I

    move-result v1

    return v1

    :cond_1
    const-string/jumbo v1, "add-raw"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/mateservice/MateShellCommand;->runAddRaw()I

    move-result v1

    return v1

    :cond_2
    const-string/jumbo v1, "remove"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/mateservice/MateShellCommand;->runRemove()I

    move-result v1

    return v1

    :cond_3
    const-string/jumbo v1, "clear"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/mateservice/MateShellCommand;->runClear()I

    move-result v1

    return v1

    :cond_4
    const-string/jumbo v1, "attach"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/samsung/android/mateservice/MateShellCommand;->runAttach()I

    move-result v1

    return v1

    :cond_5
    const-string/jumbo v1, "detach"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/samsung/android/mateservice/MateShellCommand;->runDetach()I

    move-result v1

    return v1

    :cond_6
    const-string/jumbo v1, "status"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-direct {p0}, Lcom/samsung/android/mateservice/MateShellCommand;->runStatus()I

    move-result v1

    return v1

    :cond_7
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/mateservice/MateShellCommand;->mOut:Ljava/io/PrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Remote exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/mateservice/util/UtilLog;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    const/4 v1, -0x1

    return v1
.end method

.method public onHelp()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/mateservice/MateShellCommand;->mOut:Ljava/io/PrintWriter;

    const-string/jumbo v1, "Mate commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/mateservice/MateShellCommand;->mOut:Ljava/io/PrintWriter;

    const-string/jumbo v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/mateservice/MateShellCommand;->mOut:Ljava/io/PrintWriter;

    const-string/jumbo v1, "    Print this help text\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/mateservice/MateShellCommand;->mOut:Ljava/io/PrintWriter;

    const-string/jumbo v1, "  add <SERVICE_TYPE> <SERVICE_ID> <SERIAL_NUMBER>"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/mateservice/MateShellCommand;->mOut:Ljava/io/PrintWriter;

    const-string/jumbo v1, "  add-raw <DATA_BYTES_STRING> <EXTRA_DATA_BYTES_STRING>"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/mateservice/MateShellCommand;->mOut:Ljava/io/PrintWriter;

    const-string/jumbo v1, "    add a fake accessory info.\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/mateservice/MateShellCommand;->mOut:Ljava/io/PrintWriter;

    const-string/jumbo v1, "  remove <ACCESSORY_ID>"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/mateservice/MateShellCommand;->mOut:Ljava/io/PrintWriter;

    const-string/jumbo v1, "    remove a fake accessory info.\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/mateservice/MateShellCommand;->mOut:Ljava/io/PrintWriter;

    const-string/jumbo v1, "  clear"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/mateservice/MateShellCommand;->mOut:Ljava/io/PrintWriter;

    const-string/jumbo v1, "    clear all fake accessory info.\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/mateservice/MateShellCommand;->mOut:Ljava/io/PrintWriter;

    const-string/jumbo v1, "  attach <ACCESSORY_ID>"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/mateservice/MateShellCommand;->mOut:Ljava/io/PrintWriter;

    const-string/jumbo v1, "    send the event of attached fake accessory\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/mateservice/MateShellCommand;->mOut:Ljava/io/PrintWriter;

    const-string/jumbo v1, "  detach <ACCESSORY_ID>"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/mateservice/MateShellCommand;->mOut:Ljava/io/PrintWriter;

    const-string/jumbo v1, "    send the event of detached fake accessory\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/mateservice/MateShellCommand;->mOut:Ljava/io/PrintWriter;

    const-string/jumbo v1, "  status"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/mateservice/MateShellCommand;->mOut:Ljava/io/PrintWriter;

    const-string/jumbo v1, "    show the status of fake accessory\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
