class c_2164_1;
    integer i = -359;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2164_1;
    c_2164_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xxz00zxx01xz0xz0101x10z01xx1zz1xzxxzxxzzzzzxxzxzzzzxzxzzzzxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
