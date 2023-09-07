class c_1321_1;
    integer i = -219;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1321_1;
    c_1321_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11zx101z10x1xzx000111zx101z1011xxzxzzzzzzzzxzxxzxxzxxzxxzxxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
