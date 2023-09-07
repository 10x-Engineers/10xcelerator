class c_1741_1;
    integer i = -289;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1741_1;
    c_1741_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx1z01xx1z0111x0zxxzz10100xz10x1zzzzzxxxxxxzxzzzxxzxzzzxxzxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
