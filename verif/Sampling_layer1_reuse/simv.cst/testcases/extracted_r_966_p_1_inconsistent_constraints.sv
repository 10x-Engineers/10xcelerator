class c_966_1;
    integer i = -159;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_966_1;
    c_966_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zzzzzzx11z00xz1xx0x1x00001z0xz0zxxzzzzxxzxzxzzxzxzxxzzzxzxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
