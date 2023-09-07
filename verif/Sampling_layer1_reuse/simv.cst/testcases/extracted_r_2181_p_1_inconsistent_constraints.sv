class c_2181_1;
    integer i = -362;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2181_1;
    c_2181_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxz111x00zzzx10xx1z00x0110zxx11zxxzzzzzxzxxzxzxxxzxzzxxxzzzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
