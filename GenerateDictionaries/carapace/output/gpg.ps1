# Generated from Carapace
# Todo: Validate it against documentation
# Todo: Add Static and Dynamic Sources where appropriate
[PowerTypeDictionary]@{
    Platforms   = ([Platforms]::All);
    State       = [DictionaryState]::Generated -bor [DictionaryState]::Experimental -bor [DictionaryState]::Incomplete;
    Source      = "Carapace";
    Url         = "https://gnupg.org/";
    Keys        = @("gpg");
    Name        = "gpg";
    Description = "OpenPGP encryption and signing tool";
    Parameters  = @(
        [FlagParameter]@{
            Keys        = @("--armor", "-a");
            Name        = "create ascii armored output";
            Description = "create ascii armored output";
        },
        [FlagParameter]@{
            Keys        = @("--card-status");
            Name        = "print the card status";
            Description = "print the card status";
        },
        [FlagParameter]@{
            Keys        = @("--change-passphrase");
            Name        = "change a passphrase";
            Description = "change a passphrase";
        },
        [FlagParameter]@{
            Keys        = @("--change-pin");
            Name        = "change a card's PIN";
            Description = "change a card's PIN";
        },
        [FlagParameter]@{
            Keys        = @("--check-signatures");
            Name        = "list and check key signatures";
            Description = "list and check key signatures";
        },
        [FlagParameter]@{
            Keys        = @("--clear-sign");
            Name        = "make a clear text signature";
            Description = "make a clear text signature";
        },
        [FlagParameter]@{
            Keys        = @("--decrypt", "-d");
            Name        = "decrypt data (default)";
            Description = "decrypt data (default)";
        },
        [FlagParameter]@{
            Keys        = @("--delete-keys");
            Name        = "remove keys from the public keyring";
            Description = "remove keys from the public keyring";
        },
        [FlagParameter]@{
            Keys        = @("--delete-secret-keys");
            Name        = "remove keys from the secret keyring";
            Description = "remove keys from the secret keyring";
        },
        [FlagParameter]@{
            Keys        = @("--detach-sign", "-b");
            Name        = "make a detached signature";
            Description = "make a detached signature";
        },
        [FlagParameter]@{
            Keys        = @("--dry-run", "-n");
            Name        = "do not make any changes";
            Description = "do not make any changes";
        },
        [FlagParameter]@{
            Keys        = @("--edit-card");
            Name        = "change data on a card";
            Description = "change data on a card";
        },
        [FlagParameter]@{
            Keys        = @("--edit-key");
            Name        = "sign or edit a key";
            Description = "sign or edit a key";
        },
        [FlagParameter]@{
            Keys        = @("--encrypt", "-e");
            Name        = "encrypt data";
            Description = "encrypt data";
        },
        [FlagParameter]@{
            Keys        = @("--export");
            Name        = "export keys";
            Description = "export keys";
        },
        [FlagParameter]@{
            Keys        = @("--fingerprint");
            Name        = "list keys and fingerprints";
            Description = "list keys and fingerprints";
        },
        [FlagParameter]@{
            Keys        = @("--full-generate-key");
            Name        = "full featured key pair generation";
            Description = "full featured key pair generation";
        },
        [FlagParameter]@{
            Keys        = @("--generate-key");
            Name        = "generate a new key pair";
            Description = "generate a new key pair";
        },
        [FlagParameter]@{
            Keys        = @("--generate-revocation");
            Name        = "generate a revocation certificate";
            Description = "generate a revocation certificate";
        },
        [FlagParameter]@{
            Keys        = @("--import");
            Name        = "import/merge keys";
            Description = "import/merge keys";
        },
        [FlagParameter]@{
            Keys        = @("--interactive", "-i");
            Name        = "prompt before overwriting";
            Description = "prompt before overwriting";
        },
        [FlagParameter]@{
            Keys        = @("--list-keys", "-k");
            Name        = "list keys";
            Description = "list keys";
        },
        [FlagParameter]@{
            Keys        = @("--list-secret-keys", "-K");
            Name        = "list secret keys";
            Description = "list secret keys";
        },
        [FlagParameter]@{
            Keys        = @("--list-signatures");
            Name        = "list keys and signatures";
            Description = "list keys and signatures";
        },
        [ValueParameter]@{
            Keys        = @("--local-user", "-u");
            Name        = "use USER-ID to sign or decrypt";
            Description = "use USER-ID to sign or decrypt";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--lsign-key");
            Name        = "sign a key locally";
            Description = "sign a key locally";
        },
        [FlagParameter]@{
            Keys        = @("--openpgp");
            Name        = "use strict OpenPGP behavior";
            Description = "use strict OpenPGP behavior";
        },
        [ValueParameter]@{
            Keys        = @("--output", "-o");
            Name        = "write output to FILE";
            Description = "write output to FILE";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--print-md");
            Name        = "print message digests";
            Description = "print message digests";
        },
        [FlagParameter]@{
            Keys        = @("--quick-add-uid");
            Name        = "quickly add a new user-id";
            Description = "quickly add a new user-id";
        },
        [FlagParameter]@{
            Keys        = @("--quick-generate-key");
            Name        = "quickly generate a new key pair";
            Description = "quickly generate a new key pair";
        },
        [FlagParameter]@{
            Keys        = @("--quick-lsign-key");
            Name        = "quickly sign a key locally";
            Description = "quickly sign a key locally";
        },
        [FlagParameter]@{
            Keys        = @("--quick-revoke-sig");
            Name        = "quickly revoke a key signature";
            Description = "quickly revoke a key signature";
        },
        [FlagParameter]@{
            Keys        = @("--quick-revoke-uid");
            Name        = "quickly revoke a user-id";
            Description = "quickly revoke a user-id";
        },
        [FlagParameter]@{
            Keys        = @("--quick-set-expire");
            Name        = "quickly set a new expiration date";
            Description = "quickly set a new expiration date";
        },
        [FlagParameter]@{
            Keys        = @("--quick-sign-key");
            Name        = "quickly sign a key";
            Description = "quickly sign a key";
        },
        [FlagParameter]@{
            Keys        = @("--receive-keys");
            Name        = "import keys from a keyserver";
            Description = "import keys from a keyserver";
        },
        [ValueParameter]@{
            Keys        = @("--recipient", "-r");
            Name        = "encrypt for USER-ID";
            Description = "encrypt for USER-ID";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--refresh-keys");
            Name        = "update all keys from a keyserver";
            Description = "update all keys from a keyserver";
        },
        [FlagParameter]@{
            Keys        = @("--search-keys");
            Name        = "search for keys on a keyserver";
            Description = "search for keys on a keyserver";
        },
        [FlagParameter]@{
            Keys        = @("--send-keys");
            Name        = "export keys to a keyserver";
            Description = "export keys to a keyserver";
        },
        [FlagParameter]@{
            Keys        = @("--server");
            Name        = "run in server mode";
            Description = "run in server mode";
        },
        [FlagParameter]@{
            Keys        = @("--sign", "-s");
            Name        = "make a signature";
            Description = "make a signature";
        },
        [FlagParameter]@{
            Keys        = @("--sign-key");
            Name        = "sign a key";
            Description = "sign a key";
        },
        [FlagParameter]@{
            Keys        = @("--symmetric", "-c");
            Name        = "encryption only with symmetric cipher";
            Description = "encryption only with symmetric cipher";
        },
        [FlagParameter]@{
            Keys        = @("--textmode");
            Name        = "use canonical text mode";
            Description = "use canonical text mode";
        },
        [ValueParameter]@{
            Keys        = @("--tofu-policy");
            Name        = "set the TOFU policy for a key";
            Description = "set the TOFU policy for a key";
            # Source = $?? # todo: Fix or remove this!
        },
        [FlagParameter]@{
            Keys        = @("--update-trustdb");
            Name        = "update the trust database";
            Description = "update the trust database";
        },
        [FlagParameter]@{
            Keys        = @("--verbose", "-v");
            Name        = "verbose";
            Description = "verbose";
        },
        [FlagParameter]@{
            Keys        = @("--verify");
            Name        = "verify a signature";
            Description = "verify a signature";
        },
        [ValueParameter]@{
            Keys        = @("-z");
            Name        = "set compress level to N (0 disables)";
            Description = "set compress level to N (0 disables)";
            # Source = $?? # todo: Fix or remove this!
        }
    )
}
