class c_3329_1;
    integer i = -553;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3329_1;
    c_3329_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx01xxx011x00x10xz1x0xx01zxzx000xxxxzzxxzzzzzxzzxxzxzxzxzxzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
