class c_3064_1;
    integer i = -509;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3064_1;
    c_3064_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z01001z1100xzxxz1z1000zxzx111x0zzxxzxxxxzzxzxzzxxzzzxzzzxzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
