class c_3168_1;
    integer i = -526;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3168_1;
    c_3168_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x101x11xzz0x101x1zx1zxx0x101zxxxxxxxxzxxzzzxxxxzzxzzxxzzxxxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
