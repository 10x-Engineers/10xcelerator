class c_3417_1;
    integer i = -568;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3417_1;
    c_3417_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "001xxz0xz0xx0z1zzzz1z1x011x01110xxzzzzxzxxxxxxxzzzzzxzxxzzxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
