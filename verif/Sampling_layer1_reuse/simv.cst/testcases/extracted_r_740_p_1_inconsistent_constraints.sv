class c_740_1;
    integer i = -122;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_740_1;
    c_740_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1001xx0zxzxz00z01zz0zz1zx0001000zzxzzxxxzxzxzzzxxzxxxzzzzxxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
