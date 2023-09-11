class c_852_1;
    integer i = -140;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_852_1;
    c_852_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0x1z0z000z1x010xzz0z00xxzzx100zxzzzxxxzzxxxzxzzxxzxzzzzzzzxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
