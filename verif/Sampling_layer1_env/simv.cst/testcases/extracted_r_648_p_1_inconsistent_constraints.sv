class c_648_1;
    integer i = -106;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_648_1;
    c_648_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0110z0zz1x00zxx0z0xxz0x101z1x1z1zxxxzxzxxzzzxxxzzzzxxzxzxxxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
