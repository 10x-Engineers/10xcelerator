class c_1760_1;
    integer i = -292;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1760_1;
    c_1760_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00x1101xxz1zxx01111x1000101x0x01xzxzzxxzxxxxxxzzzzzxxzzzzzzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
