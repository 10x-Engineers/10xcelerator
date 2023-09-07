class c_1074_1;
    integer i = -177;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1074_1;
    c_1074_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0x110000z0x000zx10xxzxxx01xz1zxzxxzzxzzzxzzxzxzzxzxxxxxzxzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
