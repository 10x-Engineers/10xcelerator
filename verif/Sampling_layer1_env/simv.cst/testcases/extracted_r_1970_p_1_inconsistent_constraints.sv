class c_1970_1;
    integer i = -327;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1970_1;
    c_1970_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xz0x1x0z0zzx0x0z01x0zzzx0xx0zx0xxxxxxzzzzzzzxzxzzxxzxzzzxxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
