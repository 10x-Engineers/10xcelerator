class c_328_1;
    integer i = -53;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_328_1;
    c_328_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z1z0z1zxx000xx1z010z1001xzx0zzzzzzzxxzzzzzzxxzxzzzzzzxxxxzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
