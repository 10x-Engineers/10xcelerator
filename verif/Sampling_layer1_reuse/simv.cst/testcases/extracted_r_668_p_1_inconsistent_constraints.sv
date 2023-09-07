class c_668_1;
    integer i = -110;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_668_1;
    c_668_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxzxxxxxz011z1xxxx01z011x1zx01xxxzxzzzxxzzxzxzxzzxzzxzxxxxxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
