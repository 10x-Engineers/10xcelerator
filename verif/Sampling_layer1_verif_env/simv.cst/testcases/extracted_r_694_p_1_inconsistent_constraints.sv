class c_694_1;
    integer i = -114;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_694_1;
    c_694_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10111zzzz1z1000z0101z01xzx110101zxxzxxxzzxzxzzxzxxxzxxxxxxzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
