class c_2698_1;
    integer i = -448;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2698_1;
    c_2698_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx1z0x1zx0z0000000000xx0x010zz1zxzzxxzxxxzxxxxxzzxxxzzxzzzzzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
