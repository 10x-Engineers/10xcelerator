class c_3295_1;
    integer i = -548;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3295_1;
    c_3295_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10z0z1xzxx1z111xzz1101110x00z0zzzxxzxzzzzxxxzxzxzxzzzzxzzzzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
