class c_178_1;
    integer i = -28;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_178_1;
    c_178_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z00110z0x1x1xx0101x0xzzzxz11zxxxxxzxxzxxzxxzxxxxzxxxzxzzxzzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
