class c_1520_1;
    integer i = -252;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1520_1;
    c_1520_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11110zxx1xxz0zx1xzz0x0000xx1z0z1xxzzxxzxxxxxxxxzxzxxxxxzzxxxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
