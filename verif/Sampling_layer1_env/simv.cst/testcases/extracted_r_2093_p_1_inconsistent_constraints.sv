class c_2093_1;
    integer i = -347;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2093_1;
    c_2093_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zxz1xz011010zx0x10z0x0zzzzxxz01xzzzzzxzxzxxzzzzzzxxzxxzxzzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
