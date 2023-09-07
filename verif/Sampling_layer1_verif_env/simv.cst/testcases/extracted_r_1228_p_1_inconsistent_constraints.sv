class c_1228_1;
    integer i = -203;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1228_1;
    c_1228_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x0zx0011100x1010111z0x01111x011zzxxxzzxzzxxzxzzxxxzzzxxzzzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
