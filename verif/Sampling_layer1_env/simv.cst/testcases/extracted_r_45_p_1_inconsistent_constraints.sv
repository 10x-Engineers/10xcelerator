class c_45_1;
    integer i = -6;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_45_1;
    c_45_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10000101z10xxxx00z1010zxxz001001xzzzxzxzxzxzxzzxzzzzxzxzxzxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
