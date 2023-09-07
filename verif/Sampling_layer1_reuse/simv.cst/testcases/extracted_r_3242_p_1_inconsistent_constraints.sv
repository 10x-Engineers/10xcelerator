class c_3242_1;
    integer i = -539;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3242_1;
    c_3242_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z001zx11010zxz1x010x00xz0xz0xzzxxxzzzzzzzzzxzzxzzzzzzxxzxzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
