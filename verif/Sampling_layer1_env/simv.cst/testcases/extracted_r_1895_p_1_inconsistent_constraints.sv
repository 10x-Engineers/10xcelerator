class c_1895_1;
    integer i = -314;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1895_1;
    c_1895_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "000zx0xzx1000x00xxzx1xz1z00z0z0zxzxzxzzzzzxxxxxzxxxzxxxxxzxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
