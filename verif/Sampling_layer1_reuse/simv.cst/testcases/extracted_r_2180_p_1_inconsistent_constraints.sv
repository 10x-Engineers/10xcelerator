class c_2180_1;
    integer i = -362;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2180_1;
    c_2180_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xx010xx0xz1z1x000zz10xxx0z1x10xzxzzzxxzxxxzxxxzxxxxzxzxzzzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
